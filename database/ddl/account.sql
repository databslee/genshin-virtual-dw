CREATE TABLE user_master (
    user_id VARCHAR(50) PRIMARY KEY,    -- 로그인 아이디
    password_hash VARCHAR(255) NOT NULL, -- 암호화된 비밀번호
    login_channel VARCHAR(50) NOT NULL, -- 로그인 채널 (Hoyoverse, Google, Apple 등)
    login_channel_id VARCHAR(100),      -- 채널별 유저 ID
    uid VARCHAR(20) UNIQUE NOT NULL,    -- 유저 고유 식별자 (UID)
    server VARCHAR(20) NOT NULL,        -- 접속 서버 (Asia, NA, EU 등)
    nickname VARCHAR(100),              -- 인게임 닉네임
    account_status VARCHAR(20) DEFAULT 'Active', -- 계정 상태 (Active, Banned, Dormant)
    first_login TIMESTAMP,              -- 최초 로그인 시간
    last_login TIMESTAMP,               -- 최근 로그인 시간
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- 계정 생성 시간
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- 마지막 업데이트 시간
);

CREATE INDEX idx_user_uid ON user_master(uid);
CREATE INDEX idx_user_server ON user_master(server);