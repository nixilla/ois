dataSource {
    pooled = true
    url = "jdbc:mysql://localhost:3306/ois"
    driverClassName = "com.mysql.jdbc.Driver"
    username = "root"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://dev:3306/oisdev"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/oistest"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            uri = new URI(System.env.CLEARDB_DATABASE_URL)
            url = "jdbc:mysql://" + uri.host + uri.path
            username = uri.userInfo.split(":")[0]
            password = uri.userInfo.split(":")[1]
        }
    }
}