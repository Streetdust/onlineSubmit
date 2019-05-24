package edu.challenge.mapper;

import edu.challenge.entity.StuFile;
import edu.challenge.entity.StuFileExample;
import edu.challenge.entity.StuFileKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface StuFileMapper {
   
    int countweijiao(@Param("classId")Integer classId,@Param("studentId")String studentId);
   
//    List<StuFileKey> selectByExample(StuFileExample example);
    
    
    int countByExample(StuFileExample example);

    int deleteByExample(StuFileExample example);

    int deleteByPrimaryKey(StuFileKey key);

    int insert(StuFile record);

    int insertSelective(StuFile record);

    List<StuFile> selectByExample(StuFileExample example);

    StuFile selectByPrimaryKey(StuFileKey key);

    int updateByExampleSelective(@Param("record") StuFile record, @Param("example") StuFileExample example);

    int updateByExample(@Param("record") StuFile record, @Param("example") StuFileExample example);

    int updateByPrimaryKeySelective(StuFile record);

    int updateByPrimaryKey(StuFile record);
    
    
    


}