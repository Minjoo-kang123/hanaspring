package com.hana.spring1.data;

import lombok.*;

@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CustDto {
    private String id;
    private String pwd;
    private String name;
}
