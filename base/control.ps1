Function Step-Main {
    Param (
        [string]$Command = "default"
    )

    Process {
        switch ( $Command ) {
            build { docker build -t favware/codespaces-containers:main -t favware/codespaces-containers:latest -t favware/codespaces-containers:base . }
            deploy { docker push favware/codespaces-containers:main && docker push favware/codespaces-containers:latest && docker push favware/codespaces-containers:base }
            remove { docker rmi -f favware/codespaces-containers }
            default { Write-Host "Unrecognized command, please try again" -ForegroundColor Red }
        }
    }
}

Step-Main @args