# API for Proxy App
____________________

## Endpoints

All endpoints accept and return JSON.
All endpoints will be authenticated via token authentication and must include this header with valid token returned by login
`Authorization: Token token="a3caf3291c5b0469f2bb04e360438211"`
*Token auth currently disabled for testing purposes*

### Login

POST  `/api/login`

Logs in via FACEBOOK (or signs up if user is new) the user and passes back the user object Pass in a JSON object with key `authToken` and the access token provided by facebookSDK login

Parameters:

    { "authToken":"CAABpBBdQZCT8BAK77qTxj9HQfj6f1xagQ5yGzftVZAzMsMGbGnRSRBNZAvg9wjL9z6NZCImLLlwDgdh2V4eSDLEgaGBSZAZBzF7jVfUk1lTC8vjoJClJP1e985u0jq708ZB4bEyjlZBy6blovedpzSlLsYSMnhvq0rBQxglWbP62iHcYe74ITY89u4RjRANkOnuaYxeHsu5ZBZBaZB93eeljCV0Tp28glnj74EZD"}

Response:

    { "id":2,
      "name":"Justin Huang",
      "facebook_id":"1141801215",
      "email":"justingotemail@gmail.com",
      "token":"a3caf3291c5b0469f2bb04e360438211",
      "created_at":"2014-02-20T18:14:54.000Z",
      "updated_at":"2014-02-20T18:14:54.000Z"
    }


GET  `/api/destinations`

Gets the list of destinations supported, and all associated attractions

Response:
```javascript
[{  "id":1,
    "name":"Cabo San Lucas",
    "attractions":[
      {  "id":5,
          "name":"Sailing",
          "description":"Let the tropical winds carry you over the turquoise waters to the secluded natural beaches of the Sea of Cortés and beyond.",
          "photos":null
      },
      {   "id":4,
          "name":"Whale Watching",
          "description":"From December 15th through April 15th, the waters of Cabo San Lucas fill with magnificent humpback whales; creating perfect whale watching conditions",
          "photos":null
      },
      {   "id":3,
          "name":"Snorkeling",
          "description":"Explore Cabo's underwater world as you swim, power-snorkel, kayak \u0026 stand up paddle",
          "photos":null
      },
      {   "id":2,
          "name":"Swimming with Dolphins",
          "description":"Swim with dolphins in Los Cabos; it is a life changing experience...",
          "photos":null
      },
      {   "id":1,
          "name":"Scuba Diving",
          "description":"Abundant sea life, amazing rock formations, and spectacular coral reefs await your discovery in the waters just off Cabo. Scuba diving in Cabo San Lucas offers divers of all levels a unique and wondrous diving experience. You don't want to miss scuba diving in a place famed ocean explorer, Jacque Cousteau, called the 'worlds aquarium.'",
          "photos":null
      }
    ]
}]
```