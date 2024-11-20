utxoin1="98e1415276b282dd76814ac60fd60d1e7842bd667af424985a021baab094f9e3#0"
utxoin2="920c9c5bcc2469ae3489eded35fc193f22c77cd9feff10c9817976ca7738adb1#0"
address=$(cat ./compiled/escaneo_acta.addr)
output="1100000"
collateral="4cbf990857530696a12b0062546a4b123ad0bef21c67562e32d03e3288bdcd7b#0"

cardano-cli conway transaction build \
  $PREVIEW \
  --tx-in $utxoin1 \
  --tx-in $utxoin2 \
  --tx-in-script-file ./compiled/datos_acta.uplc \
  --tx-in-datum-file ./values/acta_e1.json \
  --tx-in-redeemer-file ./values/user_id.json \
  --tx-in-collateral $collateral \
  --tx-out $address+$output \
  --tx-out-datum-hash-file ./values/acta_e2.json \
  --change-address $nami3 \
  --out-file corta_imagen.unsigned

# cardano-cli conway transaction sign \
#     --tx-body-file guarda_escaneo.unsigned \
#     --signing-key-file $HOME/Dev/Wallets/Adr08.skey \
#     --signing-key-file $HOME/Dev/Wallets/Adr07.skey \
#     $PREVIEW \
#     --out-file guarda_escaneo.signed

# cardano-cli conway transaction submit \
#     $PREVIEW \
#     --tx-file guarda_escaneo.signed