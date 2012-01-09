package copad

class Code {

	String title
	String description
	String content

	Date dateCreated
	Date lastUpdated

	Integer countView
	Integer countEdit
	Integer countExec
	Integer countFork

	Boolean isIndex

    static constraints = {
    }
}


/*
Migration Notes
===============

* update code
  set date_created=created, last_updated=updated
  where id > 0;

*/