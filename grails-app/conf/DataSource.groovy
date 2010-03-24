dataSource {
	pooled = true
        url = "jdbc:mysql://192.168.1.50:3306/ois"
	driverClassName = "com.mysql.jdbc.Driver"
	username = "ois"
	password = "ois"
}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "create-drop" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://192.168.1.50/oisdev"
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:mysql://192.168.1.50/oistest"
		}
	}
	production {
		dataSource {
			dbCreate = "update"
			url = "jdbc:mysql://192.168.1.50/oislive"
		}
	}
}