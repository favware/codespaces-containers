Function Step-with-node-canvas {
    Param (
        [string]$Command = "default"
    )

    Process {
        switch ( $Command ) {
            build { docker build -t favware/codespaces-containers:canvas . }
            remove { docker rmi -f favware/codespaces-containers:canvas }
            default { Write-Host "Unrecognized command, please try again" -ForegroundColor Red }
        }
    }
}

Step-with-node-canvas @args