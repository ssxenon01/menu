environments {
    development {
        grails {
            mongo {
                host = '127.0.0.1'
                port = 27017
                databaseName = 'menu_dev'
            }
        }

    }

    test {
        grails {
            mongo {
                host = 'localhost' // adjust this according to your settings
                port = 27017
                databaseName = 'menu_test'
            }
        }
    }

    production {
        grails {
            mongo {
                host = 'localhost' // adjust this according to your settings
                // replicaSet = ["10.27.7.139:27017", "10.27.7.140:27017"]
                port = 27017
                databaseName = 'menu'
//                username = "*"
//                password = "*"
                options {
                    autoConnectRetry = true
                    connectTimeout = 3000
                    connectionsPerHost = 40
                    socketTimeout = 60000
                    threadsAllowedToBlockForConnectionMultiplier = 5
                    maxAutoConnectRetryTime = 5
                    maxWaitTime = 120000
                }
            }
        }
    }
}

