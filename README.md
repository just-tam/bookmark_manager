## USER STORIES

``` 
As a user
So that I can save time 
I would like to see a list of bookmarks
```

``` 
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

# DOMAIN MODEL

![Bookmark manager domain model](https://github.com/just-tam/bookmark_manager/blob/master/images/bookmark-manager-domain-model-for-first-user-story.png?raw=true)

# CONNECTING TO DATABASE
1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`
