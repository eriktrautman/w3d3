GET POST IDS: doc.css("td.subtext")[0..2]  # EACH THIS SHIZZY
      .children.last.attributes["href"].value

THEN get the TOP THREE comment links and use them to populate the database


POSTS @ http://news.ycombinator.com/news
  ID # Get from post's URL
  title : doc.css("td.title a")
  Timestamp: doc.css("td.subtext").children[3].content
  comments link: doc.xpath("//td/a[contains(@href,'item?')]/@href")
  destination/article link
  author

COMMENTS
  ID
  Timestamp
  Specific comment link
  parent post ID
  body
  parent comment
  author

USERS
  Name
  ID