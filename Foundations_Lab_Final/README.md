# Foundations_Lab_Final The Professional Cybersecurity  Workbench

**Author:** Rafael Solano  
**Institutional Affiliation:** The Knowledge House  
**Course:** Night 1: The Professional Identity & Workbench  
**Instructor:** Night 1 Cyber Tutor
**Date:** February 23, 2026  


## Introduction

Hello World. This repository serves as my professional technical portfolio for the 24-week Cybersecurity Foundations Intensive [4, 5]. Establishing this workbench and pushing this initial commit formally verifies my Git authentication mechanics and confirms my digital presence within the 2026 cybersecurity ecosystem [1, 6]. This repository will serve as a centralized hub for my version-controlled documentation, technical labs, and professional growth as I transition from a "student" consumer of information into a "professional practitioner" [7-10].

## Workbench System Specifications

In alignment with the professional competency of technical specificity, the following hardware configuration is utilized for this workbench [1-3]:

*   **Model:** MacBook Pro (15-inch, 2016)
*   **Operating System:** macOS Monterey (Version 12.7.6)
*   **Processor:** 2.7 GHz Quad-Core Intel Core i7
*   **Memory:** 16 GB 2133 MHz LPDDR3
*   **Graphics:** Radeon Pro 455 (2 GB)
*   **Startup Disk:** RAFAEL'S MAC
*   **Serial Number:** C02TM07HGTFM

## Tool Ecosystem

*   **IDE:** Visual Studio Code (VS Code) [14-16]
*   **AI Integration:** Google Gemini / Cloud Code (AI Pair Programmer) [17]
*   **Local Version Control:** Git [14, 18, 19]
*   **Remote Portfolio Hub:** GitHub [18, 20, 21]

## Security Foundations: Governance & Frameworks

### The CIA Triad: The "Why" of Security
Think of this as the three-legged stool of data. If one leg breaks, the whole system collapses.

Confidentiality: Keeping secrets. Only authorized people see the data. (Example: Using encryption so a hacker can’t read your emails).

Integrity: Keeping data accurate. Ensuring the info hasn't been tampered with or corrupted. (Example: A digital signature that proves a contract wasn't changed after you signed it).

Availability: Keeping the lights on. Ensuring systems work when users need them. (Example: Preventing a DDoS attack from taking down a hospital's patient records).

## The AAA Framework: The "How" of Access
This is the process of managing a user from the moment they "knock" on the digital door to the moment they leave.

Authentication (Are you who you say you are?): This is your login—ideally using phishing-resistant MFA like a FIDO2 key.

Authorization (What are you allowed to do?): Once inside, this limits your reach. You shouldn't have "Admin" rights if you only need to read a spreadsheet (Principle of Least Privilege).

Accounting (What did you do?): This is the paper trail. It creates Non-repudiation, meaning a user cannot deny they performed an action because the immutable logs prove it was them.

## How Governance Shapes Your Career
In 2026, cybersecurity is no longer just a "tech" problem; it is a business risk managed by the Govern function of NIST CSF 2.0. Governance dictates the rules of engagement for every role. If you are a SOC Analyst, governance defines your incident response timelines; if you are a Cloud Architect, it dictates the compliance standards (like HIPAA or GDPR) you must build into your infrastructure. Without governance, security is just a series of random "fixes" without a blueprint, leading to Drift—where your security posture gets weaker over time because there’s no policy holding it in place.

## APA Citation

Center for Internet Security. (2024). CIS Critical Security Controls version 8.1. https://www.cisecurity.org/controls/v8-1


## APA References

Kiang, J. (2024, May 24). Chris Hemsworth says ‘Hot Ones’ was the ‘most intense’ interview of his life: ‘I thought I was going to have a heart attack’. Yahoo Entertainment. https://www.yahoo.com/entertainment/tv/articles/chris-hemsworth-says-hot-ones-004315892.html


Propper, D. (2026, February 24). Meet the rumored new Jalisco cartel boss — a Californian from Orange County. New York Post. https://nypost.com/2026/02/24/us-news/meet-the-rumored-new-jalisco-cartel-boss-a-californian-from-orange-county/


## Reflection: Why Governance Matters
Technical skills are the tools, but governance is the blueprint. You can build the strongest firewall in the world, but if there’s no policy (Governance) telling employees not to share passwords, the tech fails. In 2026, governance ensures that security isn't just a "IT thing" but a legal requirement that keeps the company from getting sued or shut down.

## Domain Alignment: GRC
The GRC (Governance, Risk, and Compliance) domain aligns most with today’s material. While Cloud and Network teams use the CIA Triad and AAA, the GRC team writes the rules that require them. They ensure the organization stays within the lines of the law and industry standards.

## APA Citation
National Institute of Standards and Technology. (2024). The NIST Cybersecurity Framework (CSF) 2.0. https://doi.org/10.6028/NIST.CSWP.29

## Lab Infrastructure & Virtualization Setup 

## Definitions

## Hypervisor: 
The software layer (like VirtualBox or UTM) that creates and runs virtual machines by isolating the hardware from the operating system.

## Virtual Machine (VM): 
A digital emulation of a physical computer that runs its own operating system and applications independently.

## Isolation in Cybersecurity: 
The practice of "sandboxing" environments so that a compromise or crash in one system cannot spread to the host machine or the wider network.

## The CIA Triad & Virtualization
Virtualization bolsters Confidentiality by ensuring data in one VM is inaccessible to others. It maintains Integrity through "snapshots," allowing us to revert to a clean state if files are corrupted. Finally, it ensures Availability by allowing us to quickly deploy redundant systems or recover from hardware failures without downtime.

## Reference
Cisco Networking Academy. (2024). Introduction to Cybersecurity: Virtualization and the Cloud. ---

## Reflection
Isolation is the cornerstone of secure testing; when analyzing malicious software, a virtualized environment prevents the malware from "escaping" and infecting the host production system. Virtualization supports secure experimentation by providing a controlled, disposable area where we can fail safely and reset instantly. Today’s material aligns most closely with the Cloud and Infrastructure Security domain, as we are managing the underlying virtualization layers and server environments that power modern enterprise networks.

