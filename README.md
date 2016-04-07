# Rest

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix


## Demo

List

```
curl -XGET http://127.0.0.1:4000/api/users
```

Create

```
curl -XPOST -d '{"user": {"username": "timothy","password": "123456","age": "26"}}' -H "Content-type:application/json" http://127.0.0.1:4000/api/users
```

Update

```
curl -XPUT -d '{"user": {"username": "tim","password": "123456","age": "26"}}' -H "Content-type:application/json" http://127.0.0.1:4000/api/users/1
```

Delete

```
curl -XDELETE http://127.0.0.1:4000/api/users/1
```

Show

```
curl -XGET http://127.0.0.1:4000/api/users/1
```
