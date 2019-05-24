package edu.challenge.mapper;

import edu.challenge.entity.TbClasses;
import edu.challenge.entity.TbClassesExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbClassesMapper {
    int countByExample(TbClassesExample example);

    int deleteByExample(TbClassesExample example);

    int deleteByPrimaryKey(Integer classId);

    int insert(TbClasses record);

    int insertSelective(TbClasses record);

    List<TbClasses> selectByExample(TbClassesExample example);

    TbClasses selectByPrimaryKey(Integer classId);

    int updateByExampleSelective(@Param("record") TbClasses record, @Param("example") TbClassesExample example);

    int updateByExample(@Param("record") TbClasses record, @Param("example") TbClassesExample example);

    int updateByPrimaryKeySelective(TbClasses record);

    int updateByPrimaryKey(TbClasses record);
    
    
    
    List<TbClasses> selectByPage(@Param("page")int page,@Param("count")int count);
    int insertNoClassId(@Param("className")String className,@Param("depa")String depa,@Param("major")String major);
    List<TbClasses> selectAllClassInfo(@Param("depa") String depa,@Param("major") String major);
    TbClasses searchClassIdInfo(@Param("depa")String depa,@Param("major")String major,@Param("classname")String classname);
    
}