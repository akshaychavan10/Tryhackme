
**Understand how SQL injection attacks work and how to exploit this vulnerability.**

## Task 1 Introduction 

This room is meant as an introduction to SQL injection and demonstrates various SQL injection attacks. It is not meant as a way to learn the SQL language itself. Some previous knowledge of the SQL language is highly recommended.

The web application can be found at: http://10.10.108.254:5000

NB: Please allow a minimum of five minutes for it to deploy.

It is possible to display the SQL queries performed by the application on the challenges by enabling "Show Query" in the top-right menu on http://10.10.108.254:5000. It is also possible to display tutorial for the challenges by enabling "Guidance".

All the scripts mentioned in the tasks can be viewed and downloaded by visiting the "Downloads" page in the top-left corner on the landing page or visiting http://10.10.108.254:5000/downloads/.

*Answer the questions below*

**Deploy the machine**
> No answer needed.

## Task 2 Introduction to SQL Injection: Part 1 

SQL injection is a technique through which attackers can execute their own malicious SQL statements generally referred to as a malicious payload. Through the malicious SQL statements, attackers can steal information from the victim’s database; even worse, they may be able to make changes to the database. Our employee management web application has SQL injection vulnerabilities, which mimic the mistakes frequently made by developers.

Applications will often need dynamic SQL queries to be able to display content based on different conditions set by the user. To allow for dynamic SQL queries, developers often concatenate user input directly into the SQL statement. Without checks on the received input, string concatenation becomes the most common mistake that leads to SQL injection vulnerability. Without input sanitization, the user can make the database interpret the user input as a SQL statement instead of as data. In other words, the attacker must have access to a parameter that they can control, which goes into the SQL statement. With control of a parameter, the attacker can inject a malicious query, which will be executed by the database. If the application does not sanitize the given input from the attacker-controlled parameter, the query will be vulnerable to SQL injection attack. 

The following PHP code demonstrates a dynamic SQL query in a login from. The user and password variables from the POST request is concatenated directly into the SQL statement.

```php
$query = "SELECT * FROM users WHERE username='" + $_POST["user"] + "' AND password= '" + $_POST["password"]$ + '";"
```

If the attacker supplies the value ` ' OR 1=1-- -` nside the name parameter, the query might return more than one user. Most applications will process the first user returned, meaning that the attacker can exploit this and log in as the first user the query returned. The double-dash (--) sequence is a comment indicator in SQL and causes the rest of the query to be commented out. In SQL, a string is enclosed within either a single quote (') or a double quote ("). The single quote (') in the input is used to close the string literal. If the attacker enters `' OR 1=1-- -`  in the name parameter and leaves the password blank, the query above will result in the following SQL statement.

```php
SELECT * FROM users WHERE username = '' OR 1=1-- -' AND password = ''
```

If the database executes the SQL statement above, all the users in the users table are returned. Consequently, the attacker bypasses the application's authentication mechanism and is logged in as the first user returned by the query. 

The reason for using  `-- -` instead of `--` is primarily because of how MySQL handles the double-dash comment style.

From a `--`  sequence to the end of the line. In MySQL, the `--`  (double-dash) comment style requires the second dash to be followed by at least one whitespace or control character (such as a space, tab, newline, and so on). This syntax differs slightly from standard SQL comment syntax, as discussed in Section 1.7.2.4, “`'--'` as the Start of a Comment”. (dev.mysql.com)

The safest solution for inline SQL comment is to use `--<space><any character>` such as `-- -` because if it is URL-encoded into  `--%20-` it will still be decoded as `-- -`. For more information, see: https://blog.raw.pm/en/sql-injection-mysql-comment/ 

*Answer the questions below*


