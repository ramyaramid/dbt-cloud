with payments as
(

    select * from {{ref("stripe_payments")}}

)

select orderid,sum(amount) as total_amount
from payments
group by orderid
having sum(amount)<0