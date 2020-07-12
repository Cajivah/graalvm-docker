package com.example.demo.rest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;

import java.util.Set;

@RestController
@RequestMapping("trucks")
public class TruckController {

    private static final Set<TruckDto> trucks = Set.of(new TruckDto("A"), new TruckDto("B"));

    @GetMapping
    public Flux<TruckDto> getAllTrucks() {
        return Flux.fromStream(trucks.stream());
    }

    public static class TruckDto {
        private final String truckName;

        public TruckDto(String truckName) {
            this.truckName = truckName;
        }

        public String getTruckName() {
            return truckName;
        }
    }
}
