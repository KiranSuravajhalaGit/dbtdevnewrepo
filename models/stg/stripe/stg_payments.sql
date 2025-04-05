select * from 
--raw.stripe.payment
{{ source("stripe", "payment") }}