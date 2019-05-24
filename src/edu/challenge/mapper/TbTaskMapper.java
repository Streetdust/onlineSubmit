package edu.challenge.mapper;

import edu.challenge.entity.StuTask;
import edu.challenge.entity.TbTask;
import edu.challenge.entity.TbTaskExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbTaskMapper {
    int countByExample(TbTaskExample example);

    int deleteByExample(TbTaskExample example);

    int deleteByPrimaryKey(Integer taskId);

    int insert(TbTask record);

    int insertSelective(TbTask record);

    List<TbTask> selectByExample(TbTaskExample example);

    List<TbTask> selectByPrimaryKey(@Param("courseId")String courseId,@Param("classId")Integer classId);
    
    List<TbTask> selectUnsubmit(@Param("courseId")String courseId,@Param("classId")Integer classId,@Param("studentId")String studentId);
    
    List<TbTask> selectSubmit(@Param("courseId")String courseId,@Param("classId")Integer classId,@Param("studentId")String studentId);

    int updateByExampleSelective(@Param("record") TbTask record, @Param("example") TbTaskExample example);

    int updateByExample(@Param("record") TbTask record, @Param("example") TbTaskExample example);

    int updateByPrimaryKeySelective(TbTask record);

    int updateByPrimaryKey(TbTask record);
    
    
    TbTask selectByPrimaryKey(Integer taskId);
    public List<StuTask> showStuHomeworks(Integer taskId);
}