/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controler;

import com.paypal.api.payments.Amount;
import com.paypal.api.payments.Payer;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.RedirectUrls;
import com.paypal.api.payments.Transaction;
import com.paypal.core.rest.APIContext;
import com.paypal.core.rest.OAuthTokenCredential;
import com.paypal.core.rest.PayPalRESTException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Kha Chuong
 */
public class TestPaypal {
    public void check(){
        try {
            Map<String, String> sdkConfig = new HashMap<String, String>();
            sdkConfig.put("mode", "sandbox");
            String accessToken = new OAuthTokenCredential("AQkquBDf1zctJOWGKWUEtKXm6qVhueUEMvXO_-MCI4DQQ4-LWvkDLIN2fGsd", "EL1tVxAjhT7cJimnz5-Nsx9k2reTKSVfErNQF-CmrwJgxRtylkGTKlU4RvrX", sdkConfig).getAccessToken();
      

APIContext apiContext = new APIContext(accessToken);
apiContext.setConfigurationMap(sdkConfig);

Amount amount = new Amount();
amount.setCurrency("USD");
amount.setTotal("12");

Transaction transaction = new Transaction();
transaction.setDescription("creating a payment");
transaction.setAmount(amount);

List<Transaction> transactions = new ArrayList<Transaction>();
transactions.add(transaction);

Payer payer = new Payer();
payer.setPaymentMethod("paypal");

Payment payment = new Payment();
payment.setIntent("sale");
payment.setPayer(payer);
payment.setTransactions(transactions);
RedirectUrls redirectUrls = new RedirectUrls();
redirectUrls.setCancelUrl("https://devtools-paypal.com/guide/pay_paypal?cancel=true");
redirectUrls.setReturnUrl("https://devtools-paypal.com/guide/pay_paypal?success=true");
payment.setRedirectUrls(redirectUrls);

Payment createdPayment = payment.create(apiContext);
            System.out.println("Payment " + payment.toString());
        } catch (PayPalRESTException ex) {
            Logger.getLogger(TestPaypal.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
