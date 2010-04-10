$(document).ready(function()
{
    $('.institution > .menu > ul > li > a.institution').addClass('on');
    $('.programme > .menu > ul > li > a.programme').addClass('on');
    $('.connection > .menu > ul > li > a.connection').addClass('on');
    if(!$('.on').size()) $('.wrapper > .menu > ul > li > a.home').addClass('on');

    $('.wrapper > .menu > ul > li > a').hover(
        function()
        {
            if(!$(this).hasClass('on'))
            {
                $(this).css('background-position','right -33px');
                $(this).children('span').css('background-position','left -33px');
            }
        },
        function()
        {
            $(this).css('background-position','right 0px');
            $(this).children('span').css('background-position','left 0px');
        }
    );


    if($('select.institutionSelect').size())
    {
        $('select.institutionSelect').empty();
        $.ajax(
        {
            url:        '../institution/listJSON',
            type:       'get',
            dataType:   'json',
            success:    function(data,status)
            {
                if(status == 'success')
                {
                    $('<option value=""></option>').appendTo('select.institutionSelect');
                    $.each(data,function(key,val) {$.each(val,function(k,v) {if(k == "name") $('<option value="'+v+'">'+v+'</option>').appendTo('select.institutionSelect');});});
                }
            }
        });
        $('select.institutionSelect').change(function() {$(this).parents('form').submit();});

        $('form.connectionForm').submit(function()
        {
            var $form = $(this);
            var input = $(this).serializeArray();

            if($form.find('[name="institution"]').val() == '') return false;

            $('input').attr('disabled',true);
            $('select').attr('disabled',true);


            $.ajax({
                url:        $form.attr('action'),
                method:     'post',
                dataType:   'json',
                data:       input,
                success:    function(data,status)
                {
                    $form.parent().children('.result').empty();
                    if(status == 'success')
                    {
                        $.each(data,function(k,v)
                        {
                            
                            if($form.attr('id') == 'incomingForm')
                            {
                                $form.parent().children('.result').append('<div class="'+((v.level.id == 1) ? 'undergraduate' : 'postgraduate')+'" id="iprogramme-'+v.id+'"></div>');
                                $('<div class="radio"><input type="radio" name="programme" value="'+v.id+'" /></div>').appendTo('#iprogramme-'+v.id);
                                $('<div class="name">'+v.name+'</div>').appendTo('#iprogramme-'+v.id);
                            }
                            
                            if($form.attr('id') == 'outgoingForm')
                            {
                                $form.parent().children('.result').append('<div class="'+((v.level.id == 1) ? 'undergraduate' : 'postgraduate')+'" id="oprogramme-'+v.id+'"></div>');
                                $('<div class="checkbox"><input type="checkbox" name="programme" value="'+v.id+'" /></div>').appendTo('#oprogramme-'+v.id);
                                $('<div class="name">'+v.name+'</div>').appendTo('#oprogramme-'+v.id);
                            }
                        });
                        $form.find('input[name="level"]').each(function()
                        {
                            if($(this).is(':checked')) $form.parent().children('.result').children('.'+$(this).val()).show();
                            else $form.parent().children('.result').children('.'+$(this).val()).hide();
                        });
                        $form.parent().children('.result').children('div:visible:odd').addClass('odd');
                    }
                    $('input').attr('disabled',false);
                    $('select').attr('disabled',false);
                    
                    if(!$('input[type="radio"][name="programme"]:visible:checked').size()) $('input[type="checkbox"][name="programme"]').attr('disabled',true);
                    else $('input[type="checkbox"][name="programme"]').attr('disabled',false);

                    
                }
            });
            if($('input[type="radio"][name="programme"]:checked').size()) $('input[type="radio"][name="programme"]').each(function() { $(this).change(); return false; });
            return false;
        });
    }

    $('form').find('input[name="level"]').change(function()
    {
        $(this).parents('form').parent().children('.result').children('.'+$(this).val()).toggle();
        $(this).parents('form').parent().children('.result').children('.odd').removeClass('odd');
        $(this).parents('form').parent().children('.result').children('div:visible:odd').addClass('odd');
    });

    $('input[type="radio"][name="programme"]').livequery('change',function()
    {
        var input = { incoming: $('input[type="radio"][name="programme"]:checked').val(), institution: $('#outgoingForm').find('select[name="institution"]').val() }
        $.ajax({
            url:        '../connection/getforJSON',
            method:     'post',
            dataType:   'json',
            data:       input,
            success:    function(data,status)
            {
                if(status == 'success')
                {
                    $('input[type="checkbox"][name="programme"]').attr('disabled',false).attr('checked',false);
                    
                    if(data.result != undefined && data.result == 0) return false;

                    $('input[type="checkbox"][name="programme"]').each(function()
                    {
                        $this = $(this);
                        $.each(data, function(k,v)
                        {
                            if($this.val() == v.outgoing.id) $this.attr('checked',true);
                        });
                    });
                }
            }
        });
    });


    $('form.saveForm').submit(function()
    {
        $('form.saveForm > input').val('Save').attr('disabled',true).val('Saving ...');
        var input = { incoming: $('input[type="radio"][name="programme"]:checked').val(), outgoing: $('input[type="checkbox"][name="programme"]:checked').serialize(), institution: $('#outgoingForm').find('select[name="institution"]').val() };

        $.ajax({
            url:        '../connection/saveAll',
            method:     'post',
            dataType:   'json',
            data:       input,
            success:    function(data,status)
            {
                if(status == 'success')
                {
                    if(data.success == true)
                    {
                        $('form.saveForm > input').val('Data saved successfully');
                        setTimeout("$('form.saveForm > input').val('Save').attr('disabled',false);",1000);
                    }
                    else alert('error');

                }
            }
        });
        
        return false;
    });
});