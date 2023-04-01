rule sysupdate_malware {
    meta:
        description = "Identifies SysUpdate malware based on known IOCs"
        author = "Fevar54"
        reference = "https://www.trendmicro.com/en_us/research/23/c/iron-tiger-sysupdate-adds-linux-targeting.html"
    strings:
        $str1 = "SysUpdate.exe"
        $str2 = "Software\Microsoft\Windows\CurrentVersion\Run"
        $str3 = "Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders"
    condition:
        all of ($str*)
}
