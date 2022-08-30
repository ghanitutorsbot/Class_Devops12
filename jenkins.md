

Installation

https://phoenixnap.com/kb/install-jenkins-on-windows

Manage Jenkins
        Manage plugins
            GIT plugin
            github plugin
            pipeline plugin
            deploy to container plugin

        Global tool Configuration
            Java
                uncheck install automatically
                java_home path before bin
                Name - Anyname
            Maven
                give maven path before bin
                Name - anyname
            Git
                give full path upto git.exe
                name - anyname

Jobs - Freestyle
    NewItem
        Itemname and select freestyle

        Source code management
            GIT 
                URL
                credentials
                branch

        Build Triggers
                Build Periodically
                    Cron jobs
                        Star meaning - MINUTE HOUR DOM MONTH DOW
                        Run every minute        -   * * * * *
                        Run every 30 minutes    -   30 * * * *
                                            * 10 * * *
                                            * 10 20 * *
                                            * 10 20 4 *
                                            * 10 * * 1
                         Timezone               -   TZ=Europe/London
                
                Poll SCM - work only code will be updated
                    cron jobs
                        
        Build
            Invoke top level maven targets
                Maven version - Select
                Goals "verify"

        Post Build Actions


            Containers
                war/ear path - **/*.war
                contextpath - Name it need to deploy
                Add container - Select Tomcat 9.X
                credentials - ADD - Jenkins - username and password - Add it
                                                    Select the credentials
                url - tomcat url - http://localhost:8081/

        SAVE the job
        Buildnow
        Check the logs in console output



