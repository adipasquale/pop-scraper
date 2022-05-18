def build_query():
  return {
    "query": {
      "bool": {
        "must": [
          {
            "bool": {
              "must": [
                {
                  "bool": {
                    "must": [
                      {
                        "bool": {
                          "should": [
                            {
                              "regexp": {
                                "DPT.keyword": ".*52.*"
                              }
                            }
                          ]
                        }
                      }
                    ],
                    "must_not": [],
                    "should": [],
                    "should_not": []
                  }
                },
                {
                  "bool": {
                    "must": [
                      {
                        "bool": {
                          "should": [
                            {
                              "regexp": {
                                "REF.keyword": "[Pp][Mm].*"
                              }
                            }
                          ]
                        }
                      }
                    ],
                    "must_not": [],
                    "should": [],
                    "should_not": []
                  }
                }
              ]
            }
          }
        ]
      }
    },
    "size": 25,
    "from": 0,
    "_source": {
      "excludes": [
        "ADRS2",
        "COM2",
        "EDIF2",
        "EMPL2",
        "INSEE2",
        "LBASE2"
      ]
    }
  }
