utxoin="832cf06b2e388a4569bfce92b79c0a506b5f45df76ba3c4cc7e6e7bff6086770#3"
address="addr_test1wzng3n6kmjn3dze7xqe5dskhx30ha7k4gudwjqesn7a5w4sywqluk"
output=1100000

cardano-cli conway transaction build \
  --testnet-magic 2 \
  --tx-in $utxoin \
  --tx-out $address+$output \
  --tx-out-inline-datum-file ./values/acta_e1.json \
  --change-address $nami3 \
  --out-file guarda_escaneo.unsigned

# cardano-cli conway transaction sign \
#     --tx-body-file guarda_escaneo.unsigned \
#     --signing-key-file $HOME/Dev/Wallets/Adr08.skey \
#     $PREVIEW \
#     --out-file guarda_escaneo.signed

# cardano-cli conway transaction submit \
#     $PREVIEW \
#     --tx-file guarda_escaneo.signed