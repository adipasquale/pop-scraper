curl 'https://api.pop.culture.gouv.fr/search/palissy/_msearch'  \
  -X POST  \
  -H 'Content-Type: application/x-ndjson'  \
  --data-raw $'{"preference":"res"}\n{"query":{"bool":{"must":[{"bool":{"must":[{"bool":{"must":[{"bool":{"should":[{"regexp":{"DPT.keyword":".*52.*"}}]}}],"must_not":[],"should":[],"should_not":[]}},{"bool":{"must":[],"must_not":[],"should":[],"should_not":[]}}]}}]}},"size":10,"from":10,"_source":{"excludes":["ADRS2","COM2","EDIF2","EMPL2","INSEE2","LBASE2"]}}\n'


# curl 'https://api.pop.culture.gouv.fr/search/palissy/_msearch' -X POST -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:100.0) Gecko/20100101 Firefox/100.0' -H 'Accept: application/json' -H 'Accept-Language: en-US,en;q=0.5' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-Type: application/x-ndjson' -H 'Origin: https://www.pop.culture.gouv.fr' -H 'DNT: 1' -H 'Sec-Fetch-Dest: empty' -H 'Sec-Fetch-Mode: cors' -H 'Sec-Fetch-Site: same-site' -H 'Referer: https://www.pop.culture.gouv.fr/' -H 'Connection: keep-alive' -H 'Pragma: no-cache' -H 'Cache-Control: no-cache' -H 'TE: trailers' --data-raw $'{"preference":"res"}\n{"query":{"bool":{"must":[{"bool":{"must":[{"bool":{"must":[{"bool":{"should":[{"regexp":{"DPT.keyword":".*52.*"}}]}}],"must_not":[],"should":[],"should_not":[]}},{"bool":{"must":[],"must_not":[],"should":[],"should_not":[]}}]}}]}},"size":25,"from":0,"_source":{"excludes":["ADRS2","COM2","EDIF2","EMPL2","INSEE2","LBASE2"]}}\n{"preference":"listRes"}\n{"query":{"bool":{"must":[{"bool":{"must":[{"bool":{"must":[{"bool":{"should":[{"regexp":{"DPT.keyword":".*52.*"}}]}}],"must_not":[],"should":[],"should_not":[]}},{"bool":{"must":[],"must_not":[],"should":[],"should_not":[]}}]}}]}},"size":160,"from":0,"_source":{"excludes":["ADRS2","COM2","EDIF2","EMPL2","INSEE2","LBASE2"]}}\n'