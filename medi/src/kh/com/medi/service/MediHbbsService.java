package kh.com.medi.service;

import java.util.List;

import kh.com.medi.model.MediDoctorDto;
import kh.com.medi.model.MediDoctorSchedulDto;
import kh.com.medi.model.MediHbbsParamDto;
import kh.com.medi.model.MediHbbsReviews;
import kh.com.medi.model.MediMember_hDto;

public interface MediHbbsService {

	int getBbsCount(MediHbbsParamDto hbbs) throws Exception;
	List<MediMember_hDto> getBbsPagingList(MediHbbsParamDto hbbs) throws Exception;
	MediMember_hDto getBbsDetail(int seq) throws Exception;
	List<MediDoctorDto> getDoctorDetail(int seq) throws Exception;
	
	// 맵시작
	List<MediMember_hDto> getHospitalList(MediHbbsParamDto hbbs) throws Exception;
	
	// 이용후기 시작
	boolean writeReviews(MediHbbsReviews redto) throws Exception; 
	List<MediHbbsReviews> getReviews(MediHbbsParamDto hbbsp) throws Exception;
	public int getReviewsCount(MediHbbsParamDto hbbsp) throws Exception;
	
}
