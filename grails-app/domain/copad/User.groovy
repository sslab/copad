package copad

class User {

	String account
	String password
	String nickname
	String email

	String lastAddress
	String lastAgent

	Integer level

	Date dateCreated
	Date lastUpdated

    static constraints = {
    }
}

/*
Migration Notes
===============

* update user
  set date_created=created, last_updated=updated, last_address=lastip, last_agent=agent 
  where id>1;
* update user set date_created=now(), last_updated=now() where id=1;

*/