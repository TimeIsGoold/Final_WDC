package com.tig.wdc.teacher.model.dao;

import com.tig.wdc.model.dto.TeacherInfoDTO;

public interface TeacherInfoMapper {

	TeacherInfoDTO findTeacherInfo(TeacherInfoDTO loginInfo);
}
