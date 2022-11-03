# log4j Vulnerability CVE-2021-44228

As you may have noticed a vulnerability for systems called Apache log4j has been discovered.

Read more here [Apache log4j Vulnerability](https://nvd.nist.gov/vuln/detail/CVE-2021-44228) and here [Apache log4j site](https://logging.apache.org/log4j/2.x/security.html).

We at ThreeThirds take security very seriously and we have immediately taken action to secure our environment and investigate possible security holes.

Read in detail below:

HCL has released a [Security Advisory](https://support.hcltechsw.com/csm?id=kb_article&sysparm_article=KB0095490)

## Connections

HCL Connections 7 does not use the the vulnerable log4j 2 versions.
[HCL KB](https://support.hcltechsw.com/csm?id=kb_article&sysparm_article=KB0095498)

The ThreeThirds collab.cloud environment runs on HCL Connections 7.

The elasticsearch, which is part of the new social homepage, uses the vulnerable log4j 2.11 library.
Although the official statement from [ElasticSearch](https://discuss.elastic.co/t/apache-log4j2-remote-code-execution-rce-vulnerability-cve-2021-44228-esa-2021-31/291476) says there is no need to patch, we'll patch these components.

## Sametime

Our Sametime 11 servers are not affected.

[HCL KB](https://support.hcltechsw.com/csm?id=kb_article&sysparm_article=KB0095528)

## Domino / Verse / Traveler

Domino 11 and 12 are not affected

[HCL KB](https://support.hcltechsw.com/csm?id=kb_article&sysparm_article=KB0095516)
