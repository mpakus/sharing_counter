module SharingCounter
  module API
    class Vk < APIprovider

      private

      def request_url
        "https://vk.com/share.php?act=count&index=1&url=#{@sharing_url}&format=json"
      end

      def parse(page)
        #VK.Share.count(1, 4);
        page.scan(/count\(1, ([0-9]+)\)/)[0][0].to_i
      end

    end
  end
end
