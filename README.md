# A basic docker/nginx demo to server/connect frontend/backend

This is a sample docker project with nginx to serve/connect frontend/backend paths.

it is a solution to a stackoverflow question [here](https://stackoverflow.com/questions/70538872/nginx-not-seeing-react-index-html/70539294#70539294)

but also serves as an example on its own for using nginx docker image to serve the content from different top level folders `/frontend` and `/backend`

but there is gotcha here:

- if one tries to serve any file with this `*.(html|css|js)(.*)` signature from `backend`, they will be treated as if they were in `/frontend` folder and thus will give error, unless have a duplicate name in frontend as in `/static/index.html`. here `host/static` is server from backend, but `host/static/index.html` is served from frontend
