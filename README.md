# Tripwire-analysis-and-attack

It is the report for the project of academic course of "Internet Security" at University of Catania.  
The aim is to analyze the Tripwire suite and to find vulnerabilities in Open Source Tripwire.  
The report is structured as follows:  
- Who is Tripwire;
- Brief history of Tripwire;
- File Integrity Monitoring, what is and what does;
- Tripwire suite: 
  - Tripwire Enterprise;
  - Tripwire for DevOps;
  - File Integrity Manager;
  - Tripwire IP 360;
  - Tripwire ExpertOps;
  - Tripwire LogCenter;
  - Tripwire Industrial Visibility;
  - Open Source Tripwire.
- Hands-On Open Source Tripwire:
  - Installation;
  - What it does and policy explanation;
  - Attack.
- Conclusions.
  
The vulnerability is to damage the Tripwire's database and so the adminastrator has to re-generate the database and meanwhile the attacker can be done anything. Because of it is needed root privilege to run the malicious script, I think to done first privilege escalation to make true the attack and after this I do other maliciuos action in order to show the seriousness of the vulnerability. So I can locate three phases:  
- pre-attack: I use the Dirty-Cow privilege escalation on affected linux distro to obtain root privilege;
- attack: I run the `script1.sh` to corrupt Tripwire's database;
- post-attack: I run `script2.sh`, `script3.sh`, `md5sum` and `script4.sh` that inject other malicious code in common linux command and these changes are hidden by md5sum command because this is modified in order to not show the changes in Tripwire.  
  
The language of report is Italian.

