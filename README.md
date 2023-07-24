## Gym-Checkin-api

Api to manage gym checkins

## Functional requirements

- [ ] Should be able to register a user
- [ ] Should be able to authenticate a user
- [ ] Should be able to retrieve a logged user
- [ ] Should be able to get the number of check-ins of a logged user
- [ ] Should be able to get the history of check-ins of a logged user
- [ ] Should be able to search for near gyms
- [ ] Should be able to search for gyms by name
- [ ] Should be able to checkin in a gym
- [ ] Should be able to validate a check-in of a user
- [ ] Should be able to register a gym

## Business requirements

- [ ] The user should not be able to register with a duplicate email
- [ ] The user should not be able to check-in more than once in a day
- [ ] The user should not be able to check-in if he is not at least 100 meters from the gym
- [ ] The check-in should be validated up to 20 minutes after creation
- [ ] The check-in should be validated only by admins
- [ ] The gym should be registered only by admins

## Non-functional requirements

- [ ] The user's password should be hashed
- [ ] The data should be stored in a PostgreSQL database
- [ ] Every data list should be retrieved with pagination with a limit of 20
- [ ] The user should be identified by JWT (JSON Web Token)
