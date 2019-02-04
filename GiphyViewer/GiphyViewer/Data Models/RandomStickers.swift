//
//  RandomStickers.swift
//  GiphyViewer
//
//  Created by Imrul Kayes on 2/4/19.
//  Copyright © 2019 Imrul Kayes. All rights reserved.
//

import Foundation
struct RandomStickers: Codable {
    let data: DataClass
    let meta: Meta
}

struct DataClass: Codable {
    let type,id, slug: String
    let url, bitlyGIFURL, bitlyURL, embedURL: String
    let username: String
    let source: String
    let contentURL, sourceTLD: String
    let sourcePostURL: String
    let isSticker: Int
    let importDatetime, trendingDatetime: String
    let user: User
    let images: Images
    let title: String
    let imageOriginalURL, imageURL: String
    let imageMp4URL: String
    let imageFrames, imageWidth, imageHeight: String
    let fixedHeightDownsampledURL: String
    let fixedHeightDownsampledWidth, fixedHeightDownsampledHeight: String
    let fixedWidthDownsampledURL: String
    let fixedWidthDownsampledWidth, fixedWidthDownsampledHeight: String
    let fixedHeightSmallURL, fixedHeightSmallStillURL: String
    let fixedHeightSmallWidth, fixedHeightSmallHeight: String
    let fixedWidthSmallURL, fixedWidthSmallStillURL: String
    let fixedWidthSmallWidth, fixedWidthSmallHeight, caption: String
    
    enum CodingKeys: String, CodingKey {
        case type, id, slug, url
        case bitlyGIFURL = "bitly_gif_url"
        case bitlyURL = "bitly_url"
        case embedURL = "embed_url"
        case username, source
        case contentURL = "content_url"
        case sourceTLD = "source_tld"
        case sourcePostURL = "source_post_url"
        case isSticker = "is_sticker"
        case importDatetime = "import_datetime"
        case trendingDatetime = "trending_datetime"
        case user, images, title
        case imageOriginalURL = "image_original_url"
        case imageURL = "image_url"
        case imageMp4URL = "image_mp4_url"
        case imageFrames = "image_frames"
        case imageWidth = "image_width"
        case imageHeight = "image_height"
        case fixedHeightDownsampledURL = "fixed_height_downsampled_url"
        case fixedHeightDownsampledWidth = "fixed_height_downsampled_width"
        case fixedHeightDownsampledHeight = "fixed_height_downsampled_height"
        case fixedWidthDownsampledURL = "fixed_width_downsampled_url"
        case fixedWidthDownsampledWidth = "fixed_width_downsampled_width"
        case fixedWidthDownsampledHeight = "fixed_width_downsampled_height"
        case fixedHeightSmallURL = "fixed_height_small_url"
        case fixedHeightSmallStillURL = "fixed_height_small_still_url"
        case fixedHeightSmallWidth = "fixed_height_small_width"
        case fixedHeightSmallHeight = "fixed_height_small_height"
        case fixedWidthSmallURL = "fixed_width_small_url"
        case fixedWidthSmallStillURL = "fixed_width_small_still_url"
        case fixedWidthSmallWidth = "fixed_width_small_width"
        case fixedWidthSmallHeight = "fixed_width_small_height"
        case caption
    }
}

struct Images: Codable {
    let fixedHeightStill, originalStill: The480_WStill
    let fixedWidth: FixedHeight
    let fixedHeightSmallStill: The480_WStill
    let fixedHeightDownsampled: FixedHeight
    let preview: DownsizedSmall
    let fixedHeightSmall: FixedHeight
    let downsizedStill, downsized, downsizedLarge, fixedWidthSmallStill: The480_WStill
    let previewWebp, fixedWidthStill: The480_WStill
    let fixedWidthSmall: FixedHeight
    let downsizedSmall: DownsizedSmall
    let fixedWidthDownsampled: FixedHeight
    let downsizedMedium: The480_WStill
    let original, fixedHeight: FixedHeight
    let hd: DownsizedSmall
    let looping: Looping
    let originalMp4: DownsizedSmall
    let previewGIF, the480WStill: The480_WStill
    
    enum CodingKeys: String, CodingKey {
        case fixedHeightStill = "fixed_height_still"
        case originalStill = "original_still"
        case fixedWidth = "fixed_width"
        case fixedHeightSmallStill = "fixed_height_small_still"
        case fixedHeightDownsampled = "fixed_height_downsampled"
        case preview
        case fixedHeightSmall = "fixed_height_small"
        case downsizedStill = "downsized_still"
        case downsized
        case downsizedLarge = "downsized_large"
        case fixedWidthSmallStill = "fixed_width_small_still"
        case previewWebp = "preview_webp"
        case fixedWidthStill = "fixed_width_still"
        case fixedWidthSmall = "fixed_width_small"
        case downsizedSmall = "downsized_small"
        case fixedWidthDownsampled = "fixed_width_downsampled"
        case downsizedMedium = "downsized_medium"
        case original
        case fixedHeight = "fixed_height"
        case hd, looping
        case originalMp4 = "original_mp4"
        case previewGIF = "preview_gif"
        case the480WStill = "480w_still"
    }
}

struct The480_WStill: Codable {
    let url: String
    let width, height: String
    let size: String?
}

struct DownsizedSmall: Codable {
    let width, height: String
    let mp4: String
    let mp4Size: String
    
    enum CodingKeys: String, CodingKey {
        case width, height, mp4
        case mp4Size = "mp4_size"
    }
}

struct FixedHeight: Codable {
    let url: String
    let width, height, size: String
    let mp4: String?
    let mp4Size: String?
    let webp: String
    let webpSize: String
    let frames, hash: String?
    
    enum CodingKeys: String, CodingKey {
        case url, width, height, size, mp4
        case mp4Size = "mp4_size"
        case webp
        case webpSize = "webp_size"
        case frames, hash
    }
}

struct Looping: Codable {
    let mp4: String
    let mp4Size: String
    
    enum CodingKeys: String, CodingKey {
        case mp4
        case mp4Size = "mp4_size"
    }
}

struct User: Codable {
    let avatarURL: String
    let bannerURL: String
    let profileURL: String
    let username, displayName, guid: String
    let isVerified: Bool
    
    enum CodingKeys: String, CodingKey {
        case avatarURL = "avatar_url"
        case bannerURL = "banner_url"
        case profileURL = "profile_url"
        case username
        case displayName = "display_name"
        case guid
        case isVerified = "is_verified"
    }
}

struct Meta: Codable {
    let status: Int
    let msg, responseID: String
    
    enum CodingKeys: String, CodingKey {
        case status, msg
        case responseID = "response_id"
    }
}

