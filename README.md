# The Hacking News

## Modélisation

* Users
  * email:string [unique, present]
  * password:string [6-16 chars, present]
  * id:integer
  * created_at:datetime
  * updated_at:datetime
  * has_many links
* Links
  * title:string [unique, present]
  * url:text [present]
  * user_id:integer [present]
  * id:integer
  * created_at:datetime
  * updated_at:datetime
  * belongs to user
* Comments
  * commenter:string [present]
  * body:text [present]
  * link_id:integer [present]
  * id:integer
  * created_at:datetime
  * updated_at:datetime
  * has many answers
* Answers
  * answerer:string [present]
  * body:text [present]
  * comment_id:integer [present]
  * id:integer
  * created_at:datetime
  * updated_at:datetime
  * belongs to comment

## Tests

Pour lancer les tests :
1. Cloner/télécharger le repo en local.
2. Installer la gem Minitest => gem install minitest.
3. Placer vous dans le dossier *the_hacking_news*.
4. Lancer la commander rails test:models

---

Mode with <3 in Bordeaux - Pierrick, Arnold, Jérémy & Simon

Respectivement sur Slack :
* @Pierrick
* @domoya_arnold
* @sabadie.jeremy
* @simwyck
