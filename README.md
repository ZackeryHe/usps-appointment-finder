# Requirement

Google Cloud CLI Usage:

download ---
go to 

Personal Computer:

Install Docker (https://docs.docker.com/get-docker/)

# USPS Passport appointment finder

Usage:

```
docker build -t apt-finder .
docker run -e ZIP=<YOUR-ZIP> AREA-<Optional-default=2> --rm -it apt-finder
No specified area: Using default size of 2
searching for offices around your location...
found location SUNNYVALE
found location ALVISO
found location AGNEW
found location MOUNTAIN VIEW
found location MISSION SANTA CLARA
found location LOYOLA CORNERS
found location CUPERTINO
checking appointments in 7 locations
getting appointments on 2024-08-27 at SUNNYVALE
found 0 appointments on this day
getting appointments on 2024-08-27 at ALVISO
found 11 appointments on this day
[
  {
    appointmentId: 4,
    schedulingType: 'PASSPORT',
    appointmentStatus: 'Available',
    startTime: '09:45 AM',
    startDateTime: '2024-08-27T09:45:00',
    endTime: '10:00 AM',
    endDateTime: '2024-08-27T10:00:00',
    selectable: false
  },
  ...
]
...
```

# Change search area

This program searches for available USPS passport appointments in a larger area of USPS offices around the specified zip code.
Modify the area variable to change the search size
A value of 1 searches for the nearby 5 offices in the specified zip code.
A value of 2 searches for additional 5 offices from each located office.
And so on.


