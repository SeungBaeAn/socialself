package kr.spring.member.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.member.dao.MemberMapper;
import kr.spring.member.domain.MemberCommand;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	//
	@Resource(name="memberMapper")
	MemberMapper memberMapper;
	
	@Override
	public List<MemberCommand> getMemberList(Map<String, Object> map) {
		return memberMapper.getMemberList(map);
	}

	@Override
	public int getMemberCount() {
		return memberMapper.getMemberCount();
	}

	@Override
	public void insertMember(MemberCommand member) {
		memberMapper.insertMember(member);
	}

	@Override
	public MemberCommand getMember(String id) {
		return memberMapper.getMember(id);
	}

	@Override
	public void updateMember(MemberCommand member) {
		memberMapper.updateMember(member);
	}

	@Override
	public void deleteMember(String id) {
		memberMapper.deleteMember(id);
	}

}
