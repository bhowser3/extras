historyStr="$(history | tail -n 2 | head -n 1)"

echo $historyStr

  curl -X POST -H "Content-Type: application/json" -d \

    '{

    "blocks": [

        {

            "type": "section",

            "text": {

                "type": "plain_text",

                "text": "Previously used command:",

                "emoji": true

            }

        },

        {

            "type": "section",

            "text": {

                "type": "mrkdwn",

                "text": "``` '"$historyStr"' ```"

            }

        }

    ]

}' "https://hooks.slack.com/services/"; \

 

echo \