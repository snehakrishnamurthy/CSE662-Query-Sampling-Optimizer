SELECT XORDERS.orderkey, 
       XORDERS.orderdate,
       XORDERS.shippriority,
       extendedprice * (1 - discount) AS query3
FROM   XCUSTOMER, XORDERS, XLINEITEM
WHERE  XCUSTOMER.mktsegment = 'BUILDING'
  AND  XORDERS.custkey = XCUSTOMER.custkey
  AND  XLINEITEM.orderkey = XORDERS.orderkey
  AND  XORDERS.orderdate < TO_DATE('1995-03-15', 'YYYY-MM-DD')
  AND  XLINEITEM.shipdate > TO_DATE('1995-03-15', 'YYYY-MM-DD');