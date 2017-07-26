package kr.spring.member.service;

import java.util.List;
import java.util.Map;

import kr.spring.member.domain.MemberCommand;

public interface MemberService {
	public List<MemberCommand> getMemberList(Map<String,Object> map);
	public int getMemberCount();
	public void insertMember(MemberCommand member);
	public MemberCommand getMember(String id);
	public void updateMember(MemberCommand member);
	public void deleteMember(String id);
}
