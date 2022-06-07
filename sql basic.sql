#  Get the id values of the first 5 clients from district_id with a value equals to 1

use bank;
SELECT 
    *
FROM
    client;

SELECT 
    client_id
FROM
    client
WHERE
    district_id = 1
ORDER BY client_id ASC
LIMIT 5;
#In the client table, get an id value of the last client where the district_id equals to 72.
Select * 
from client;
select max(client_id)from client
where district_id = 72;
#Get the 3 lowest amounts in the loan table.
select * from loan;
select amount
from loan
order by amount asc
limit 3;
#the possible values for status, ordered alphabetically in ascending order in the loan table?
#Query 4
#What are the possible values for status, ordered alphabetically in ascending order in the loan table?

Select * from loan;
Select  status From loan;
select status
from loan
group by status
order by status Asc;

#Query 5
#What is the loan_id of the highest payment received in the loan table
Select * from loan;
Select loan_id 
From loan
Having max(amount);

#Query 6
#What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount
select 
account_id, amount
From loan
order by account_id ASC
limit 5;

#Query 7
#What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?
select account_id
from loan
where duration = 60
order by amount Asc
Limit 5;

#Query 8
#What are the unique values of k_symbol in the order table?
Select * from bank.order;
Select distinct k_symbol 
from bank.order
order by k_symbol Asc;

Query 9
In the order table, what are the order_ids of the client with the account_id 34?
Query 10
In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?
Query 11
In the order table, what are the individual amounts that were sent to (account_to) id 30067122?
Query 12
In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, from newest to oldest.
Query 13
In the client table, of all districts with a district_id lower than 10, how many clients are from each district_id? Show the results sorted by the district_id in ascending order.
Query 14
In the card table, how many cards exist for each type? Rank the result starting with the most frequent type.
Query 15
Using the loan table, print the top 10 account_ids based on the sum of all of their loan amounts.
Query 16
In the loan table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order.
Query 17
In the loan table, for each day in December 1997, count the number of loans issued for each unique loan duration, ordered by date and duration, both in ascending order. You can ignore days without any loans in your output.
Query 18
In the trans table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming). Your output should have the account_id, the type and the sum of amount, named as total_amount. Sort alphabetically by type.
Query 19
From the previous output, translate the values for type to English, rename the column to transaction_type, round total_amount down to an integer
Query 20
From the previous result, modify your query so that it returns only one row, with a column for incoming amount, outgoing amount and the difference.
Query 21
Continuing with the previous example, rank the top 10 account_ids based on their difference.

