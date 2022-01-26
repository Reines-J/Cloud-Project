package site.haniumdevops.app.api;

import com.fasterxml.jackson.core.JsonProcessingException;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import site.haniumdevops.app.elasticsearch.ElasticSearchService;

import java.util.Map;

@RequiredArgsConstructor
@RestController
public class HealthCheckController {
    private final ElasticSearchService elasticSearchService;

    @GetMapping("/healthcheck")
    public String healthcheck() {
        return "healthy!!";
    }

    @GetMapping("/es/log")
    public Map getLog() throws JsonProcessingException {
        return elasticSearchService.getRecentLogs();
    }
}
