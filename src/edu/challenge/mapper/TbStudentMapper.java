package edu.challenge.mapper;

import edu.challenge.entity.TbClasses;
import edu.challenge.entity.TbStudent;
import edu.challenge.entity.TbStudentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbStudentMapper {
    int countByExample(TbStudentExample example);

    int deleteByExample(TbStudentExample example);

    int deleteByPrimaryKey(String studentId);

    int insert(TbStudent record);

    int insertSelective(TbStudent record);

    List<TbStudent> selectByExample(TbStudentExample example);

    TbStudent selectByPrimaryKey(String studentId);

    int updateByExampleSelective(@Param("record") TbStudent record, @Param("example") TbStudentExample example);

    int updateByExample(@Param("record") TbStudent record, @Param("example") TbStudentExample example);

    int updateByPrimaryKeySelective(TbStudent record);

    int updateByPrimaryKey(TbStudent record);
    
    
    
    List<TbStudent> selectByPage(@Param("page")int page,@Param("count")int count);
    
    
}