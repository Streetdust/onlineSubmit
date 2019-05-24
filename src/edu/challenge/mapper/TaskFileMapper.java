package edu.challenge.mapper;

import edu.challenge.entity.TaskFile;
import edu.challenge.entity.TaskFileExample;
import edu.challenge.entity.TaskFileKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TaskFileMapper {
    int countByExample(TaskFileExample example);

    int deleteByExample(TaskFileExample example);

    int deleteByPrimaryKey(TaskFileKey key);

    int insert(TaskFile record);

    int insertSelective(TaskFile record);

    List<TaskFile> selectByExample(TaskFileExample example);

    TaskFile selectByPrimaryKey(TaskFileKey key);

    int updateByExampleSelective(@Param("record") TaskFile record, @Param("example") TaskFileExample example);

    int updateByExample(@Param("record") TaskFile record, @Param("example") TaskFileExample example);

    int updateByPrimaryKeySelective(TaskFile record);

    int updateByPrimaryKey(TaskFile record);
}