# USER STORIES

```
As a user
So that I can save time
I would like to see a list of bookmarks
```

```
As a user
So that I can store bookmarks to see later
I would like to be able to add a bookmark to Bookmark Manager
```

```
As a user
So I can remove my bookmark from Bookmark Manager
I want to delete a bookmark
```

```
As a user
So I can change a bookmark in Bookmark Manager
I want to update a bookmark
```

```
As a user
So that the bookmarks I save are useful
I want to only save a valid URL
```


# DOMAIN MODEL

![Bookmark manager domain model](https://github.com/just-tam/bookmark_manager/blob/master/images/bookmark-manager-domain-model-for-first-user-story.png?raw=true)

# CONNECTING TO DATABASE

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager;`
4. Run the query we have saved in the DB file `01_create_bookmarks_table.sql`

# CONNECTING TO TEST DATABASE

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager_test;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager;`
4. Run the query we have saved in the DB file `01_create_bookmarks_table.sql`
