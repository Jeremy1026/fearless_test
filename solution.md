# Setup

To get started clone the repository by running `git clone https://github.com/Jeremy1026/fearless_test.git`

# Running

Docker is required to run this project (`https://www.docker.com/get-started/` to download Docker)

The project can be run by simply going to the directory where it was cloned in your terminal and running `docker compose up`

# How it works

You can get a list of all items by creating a GET request to `http://localhost:3000/items.json`, this will provide a JSON array of all items currently stored in the database

You can add items by POSTing to `http://localhost:3000/items/new`, example:

```
curl -XPOST -H "Content-type: application/json" -d '{name: "{NAME}"}' 'localhost:3000/items/new'
```

You can get details of a specific item by creating a GET request to `http://localhost:300/items/<id>.json`

You can update an item by creating a PATCH request to `http://localhost:300/items/<id>.json`, example:

```
curl -XPATCH -H "Content-type: application/json" -d '{name: "{NEW NAME}"}' 'localhost:3000/items/1'
```

You can delete an item by creating a DELETE request to `http://localhost:300/items/<id>.json`