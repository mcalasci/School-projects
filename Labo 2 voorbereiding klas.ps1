#opvragen van alle processen met ID en processnaam. als error dan -erroraction inquire (vraagt aan user wat doen)
$processen = Get-Process | Select-Object -Property Id, ProcessName
#filtering op ID op elke processen (for each). als ID < 10000 dan: “Process: VUL HIER DE PROCESSNAAM IN is kleiner dan 10000.”
    foreach ($process in $processen) {
    $id =  $process.ID
    $name = $process.ProcessName

    if ($id -lt 10000) {
    Write-Host "Process: $name is kleiner dan 10000."
    }
#als ID van process > 10000 dan: “Process: VUL HIER DE PROCESSNAAM IN heeft als ID VUL HIER HET ID IN en is dus groter dan 10000”
    else {
    Write-Host "Process: $name heeft als ID $id en is dus groter dan 10000."
    }
    }


#totaal aantal gefilterde processen
Write-Host $processen.count