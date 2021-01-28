Function Get-MLogicaldisk {
    [CmdletBinding()]
    Param(
        [parameter()]
        [string]$ComputerName=$env:COMPUTERNAME
    )
    Process {
        $sess=New-CimSessionOption -Protocol Wsman
        $cimsess=new-cimsession -ComputerName $ComputerName -SessionOption $sess
        Get-CimInstance -ClassName win32_logicaldisk -CimSession $cimsess 
    }    
}