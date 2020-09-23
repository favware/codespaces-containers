Function Step-Main {
    Param (
        [string]$Command = "default"
    )

    Process {
        switch ( $Command ) {
            build { docker build -t favware/codespaces-containers:base . }
            remove { docker rmi -f favware/codespaces-containers:base }
            default { Write-Host "Unrecognized command, please try again" -ForegroundColor Red }
        }
    }
}

Step-Main @args