package com.hana.app.repository;

import com.hana.app.data.dto.CompanyNoticeDto;
import com.hana.app.data.dto.One2OneDto;
import com.hana.app.frame.TestRepository;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface CompanyNoticeRepository extends TestRepository<Integer, CompanyNoticeDto> {
}
