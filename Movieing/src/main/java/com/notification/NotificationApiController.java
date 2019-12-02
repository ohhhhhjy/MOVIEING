package com.notification;

import org.springframework.stereotype.Controller;


@Controller
public class NotificationApiController {
	/*

	@RequestMapping(value="/Movieing/FCMTest.mov", method=RequestMethod.GET, produces="text/plain;charset=UTF-8")
    public String fcmTest() throws Exception {
		System.out.println("fcm 컨트롤러로 들어옴");
        try {

            String path = "/Movieing/src/main/webapp/resources/google/androidmoving-c76d9-firebase-adminsdk-jkzgq-48383acc63.json";
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
	/*
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "index.tiles";
    }
*/

}