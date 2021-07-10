package com.tig.wdc.user.model.dao;

import java.util.List;
import java.util.Map;

import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.dto.UserLikeClassDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;

public interface UserInfoMapper {
	
	UserInfoDTO selectUser(int userNo);

	UserInfoDTO findfindUserInfo(UserInfoDTO userInfoDTO);

	List<UserCouponDTO> selectCouponList(int userNo);

	List<UserClassDTO> selectScheduledOneDayClassList(int userNo);

	List<UserClassDTO> selectScheduledRegularClassList(int userNo);

	List<UserClassDTO> selectparticipatingOneDayClassList(int userNo);

	List<UserClassDTO> selectparticipatingRegularClassList(int userNo);

	List<UserClassDTO> selectComplateClassList(int userNo);

	List<UserClassDTO> selectRefundClassList(int userNo);

	UserClassDTO selectScheduleDetail(UserClassDTO userClassDTO);

	int insertReview(UserReviewDTO userReviewDTO);

	int selectReviewYn(int aplNo);

	List<UserCouponDTO> selectAllUserCouponList();

	int selectUseAllUserCoupon(UserCouponDTO alluserCouponDTO);

	UserInfoDTO selectExistingInfo(Map<String, String> result);

	String selectCheckDoubleId(String checkId);

	int registUser(UserInfoDTO registInfo);

	int selectLikeStatus(UserLikeClassDTO likeClassDTO);
	
	int selectLikeHistory(UserLikeClassDTO likeClassDTO);

	int insertLike(UserLikeClassDTO likeClassDTO);

	int updateLikeYn(UserLikeClassDTO likeClassDTO);

	int selectPhone(UserInfoDTO infoDTO);

	int updatePhone(UserInfoDTO infoDTO);

	int updatePwd(UserInfoDTO infoDTO);

	int selectPwd(UserInfoDTO infoDTO);



}
