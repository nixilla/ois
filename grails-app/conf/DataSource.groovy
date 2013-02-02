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
            def uri = new URI(System.env.CLEARDB_DATABASE_URL ?: 'mysql://localhost:3306/ois')
            url = "jdbc:mysql://" + uri?.host + uri?.path + "?autoReconnect=true"
            username = uri?.userInfo?.split(":")?.getAt(0)
            password = uri?.userInfo?.split(":")?.getAt(1)
            properties {
                maxActive = 10
                maxIdle = 5
                minIdle = 5
                initialSize = 5
                minEvictableIdleTimeMillis = 60000
                timeBetweenEvictionRunsMillis = 60000
                maxWait = 10000
                validationQuery = "SELECT NOW()"
            }
        }
    }
}