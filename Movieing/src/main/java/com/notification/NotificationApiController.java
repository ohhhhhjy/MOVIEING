package com.notification;

import java.io.FileInputStream;
import java.util.Arrays;

import org.json.simple.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;


@Controller
public class NotificationApiController {

	@RequestMapping(value="/fcmTest", method=RequestMethod.POST, produces="text/plain;charset=UTF-8")
    public void fcmTest() throws Exception {
        try {

            String path = "C:/** .. **/webapp/resources/google/{fcm-test-*******************************.json}";
            String MESSAGING_SCOPE = "https://www.googleapis.com/auth/firebase.messaging";
            String[] SCOPES = { MESSAGING_SCOPE };

            GoogleCredential googleCredential = GoogleCredential
                                .fromStream(new FileInputStream(path))
                                .createScoped(Arrays.asList(SCOPES));
            googleCredential.refreshToken();

            HttpHeaders headers = new HttpHeaders();
            headers.add("content-type" , MediaType.APPLICATION_JSON_VALUE);
            headers.add("Authorization", "Bearer " + googleCredential.getAccessToken());

            JSONObject notification = new JSONObject();
            notification.put("body", "TEST");
            notification.put("title", "TEST");

            JSONObject message = new JSONObject();
            message.put("token", "AAAA5vn50wE:APA91bFT7wITkLCAGVjXJCryGksDWgwE_2pUpdvA2yi6rwCgFcmqRmGuIZYvWLZL50II44NV1ILFFdJBoZyglVGmsGOuPMAAxupGIsr7LisDT2xQ6tLkw_6nv_PRUAbT_8OQmIhWeusE");
            message.put("notification", notification);

            JSONObject jsonParams = new JSONObject();
            jsonParams.put("message", message);

            HttpEntity<JSONObject> httpEntity = new HttpEntity<JSONObject>(jsonParams, headers);
            RestTemplate rt = new RestTemplate();

            ResponseEntity<String> res = rt.exchange("https://fcm.googleapis.com/v1/projects/androidmoving-c76d9/messages:send"
                    , org.springframework.http.HttpMethod.POST
                    , httpEntity
                    , String.class);
            /*
            if (res.getStatusCode() != HttpStatus.OK) {
                log.debug("FCM-Exception");
                log.debug(res.getStatusCode().toString());
                log.debug(res.getHeaders().toString());
                log.debug(res.getBody().toString());

            } else {
                log.debug(res.getStatusCode().toString());
                log.debug(res.getHeaders().toString());
                log.debug(res.getBody().toLowerCase());

            }
            */
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}