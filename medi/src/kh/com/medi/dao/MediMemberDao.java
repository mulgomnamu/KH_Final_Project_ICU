package kh.com.medi.dao;

import java.util.List;

import kh.com.medi.model.MediMemberDto;

public interface MediMemberDao {
	
	
	public List<MediMemberDto> test() throws Exception;
	public MediMemberDto idCheck(String id) throws Exception;
	public MediMemberDto emailCheck(String email) throws Exception;
	public MediMemberDto phoneCheck(String phone) throws Exception;
	public boolean insertMember(MediMemberDto dto) throws Exception;
	public MediMemberDto loginAf(MediMemberDto dto) throws Exception;
	public MediMemberDto idFind(MediMemberDto dto) throws Exception;
	public MediMemberDto getQuesAns(MediMemberDto dto) throws Exception;
	public boolean pwdReset(MediMemberDto dto) throws Exception;
	public boolean emailAuth(MediMemberDto dto) throws Exception;
	public MediMemberDto emailAuthAf(MediMemberDto dto) throws Exception;

}
