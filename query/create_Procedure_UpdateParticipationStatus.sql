-- 관리자 승인/거절 ->participation status = accepted, 거절시 reject

DELIMITER //

CREATE PROCEDURE UpdateParticipationStatus
            (IN     varFK_TaskName      Varchar(45),
             IN     varFK_idUSER        int(11),
             IN     newStatus           Varchar(45))

BEGIN
    IF (newStatus = "accepted" or newStatus = "rejected") THEN
        -- If exists participation row
        IF EXISTS 
        (SELECT * FROM PARTICIPATION
         WHERE  PARTICIPATION.FK_TaskName = varFK_TaskName
            AND PARTICIPATION.FK_idUSER = varFK_idUSER
            AND PARTICIPATION.status = "waiting") THEN
            -- update participation status to accpted or rejected
            UPDATE PARTICIPATION
                SET     PARTICIPATION.Status = newStatus
                WHERE   (PARTICIPATION.FK_TaskName = varFK_TaskName
                    AND  PARTICIPATION.FK_idUSER = varFK_idUSER);
        END IF;
        -- print message
        SELECT "update participation status successfully"
        AS UpdateParticipationStausResults;

    ELSE
        -- print message        
        SELECT 'Invalid participation status value'
        AS UpdateParticipationStatusErrorMessage;
    END IF;
END
//

DELIMITER ;
