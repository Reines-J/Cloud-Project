package site.haniumdevops.app.elasticsearch;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.Map;

@Service
public class ElasticSearchService {
    public Map getRecentLogs() throws JsonProcessingException {
        RestTemplate restTemplate = new RestTemplate();

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        String requestJson = "{\n" +
                "    \"sort\": [{\n" +
                "        \"@timestamp\": {\n" +
                "            \"order\": \"desc\",\n" +
                "            \"unmapped_type\" : \"date\"\n" +
                "        }\n" +
                "    }],\n" +
                "    \"_source\": [\"log\", \"kubernetes.container_name\", \"@timestamp\"]\n" +
                "}";
        HttpEntity<String> entity = new HttpEntity<String>(requestJson, headers);


        String result = restTemplate.postForObject(
                "https://elasticsearch.hanium-devops.site/_all/_search?q=kubernetes.container_name:helloworld",
                entity,
                String.class
        );

        ObjectMapper objectMapper = new ObjectMapper();
        return objectMapper.readValue(result, Map.class);
    }
}
