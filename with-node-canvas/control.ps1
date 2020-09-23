Function Step-with-node-canvas {
    Param (
        [string]$Command = "default"
    )

    Process {
        switch ( $Command ) {
            build { docker build -t favware/codespaces-containers:with-node-canvas -t favware/codespaces-containers:with-canvas -t favware/codespaces-containers:canvas . }
            deploy { docker push favware/codespaces-containers:with-node-canvas && docker push favware/codespaces-containers:with-canvas && docker push favware/codespaces-containers:canvas }
            remove { docker rmi -f favware/codespaces-containers }
            default { Write-Host "Unrecognized command, please try again" -ForegroundColor Red }
        }
    }
}

Step-with-node-canvas @args