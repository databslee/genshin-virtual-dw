CREATE TABLE login_channel (
    login_channel_id VARCHAR(100) PRIMARY KEY,    -- 채널별 유저 ID
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- 생성 시간
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- 마지막 업데이트 시간
);
